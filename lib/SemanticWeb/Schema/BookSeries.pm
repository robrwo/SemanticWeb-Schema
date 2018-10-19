use utf8;

package SemanticWeb::Schema::BookSeries;

# ABSTRACT: A series of books

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeries /;


use MooX::JSON_LD 'BookSeries';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.3';

=encoding utf8

=head1 DESCRIPTION

A series of books. Included books can be indicated with the hasPart
property.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeries>

=cut

1;
