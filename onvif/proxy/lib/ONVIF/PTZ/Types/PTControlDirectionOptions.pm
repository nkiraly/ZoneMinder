package ONVIF::PTZ::Types::PTControlDirectionOptions;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %EFlip_of :ATTR(:get<EFlip>);
my %Reverse_of :ATTR(:get<Reverse>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        EFlip
        Reverse
        Extension

    ) ],
    {
        'EFlip' => \%EFlip_of,
        'Reverse' => \%Reverse_of,
        'Extension' => \%Extension_of,
    },
    {
        'EFlip' => 'ONVIF::PTZ::Types::EFlipOptions',
        'Reverse' => 'ONVIF::PTZ::Types::ReverseOptions',
        'Extension' => 'ONVIF::PTZ::Types::PTControlDirectionOptionsExtension',
    },
    {

        'EFlip' => 'EFlip',
        'Reverse' => 'Reverse',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::PTControlDirectionOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PTControlDirectionOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * EFlip


=item * Reverse


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::PTControlDirectionOptions
   EFlip =>  { # ONVIF::PTZ::Types::EFlipOptions
     Mode => $some_value, # EFlipMode
     Extension =>  { # ONVIF::PTZ::Types::EFlipOptionsExtension
     },
   },
   Reverse =>  { # ONVIF::PTZ::Types::ReverseOptions
     Mode => $some_value, # ReverseMode
     Extension =>  { # ONVIF::PTZ::Types::ReverseOptionsExtension
     },
   },
   Extension =>  { # ONVIF::PTZ::Types::PTControlDirectionOptionsExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

