use utf8;

package SemanticWeb::Schema::additionalProperty;

# ABSTRACT: A property-value pair representing an additional characteristic of the entity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'additionalProperty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A property-value pair representing an additional characteristic of the
entity, e.g. a product feature or another characteristic for which there is
no matching property in schema.org. Note: Publishers should be aware that
applications designed to use specific schema.org properties (e.g.
http://schema.org/width, http://schema.org/color, http://schema.org/gtin13,
...) will typically expect such data to be provided using those properties,
rather than using the generic property/value mechanism. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
