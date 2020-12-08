use utf8;

package SemanticWeb::Schema::Series;

# ABSTRACT: A Series in schema

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Series';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A Series in schema.org is a group of related items, typically but not
necessarily of the same kind. See also [[CreativeWorkSeries]],
[[EventSeries]].




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
