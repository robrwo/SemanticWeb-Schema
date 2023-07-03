use utf8;

package SemanticWeb::Schema::PostalCodeRangeSpecification;

# ABSTRACT: Indicates a range of postal codes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'PostalCodeRangeSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a range of postal codes, usually defined as the set of valid codes between [[postalCodeBegin]] and [[postalCodeEnd]], inclusively.



=head1 ATTRIBUTES


=head2 C<postal_code_begin>

C<postalCodeBegin>

First postal code in a range (included).


A postal_code_begin should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_postal_code_begin>

A predicate for the L</postal_code_begin> attribute.

=cut

has postal_code_begin => (
    is        => 'rw',
    predicate => '_has_postal_code_begin',
    json_ld   => 'postalCodeBegin',
);


=head2 C<postal_code_end>

C<postalCodeEnd>

Last postal code in the range (included). Needs to be after [[postalCodeBegin]].

A postal_code_end should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_postal_code_end>

A predicate for the L</postal_code_end> attribute.

=cut

has postal_code_end => (
    is        => 'rw',
    predicate => '_has_postal_code_end',
    json_ld   => 'postalCodeEnd',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
