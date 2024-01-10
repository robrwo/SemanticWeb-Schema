use utf8;

package SemanticWeb::Schema::citation;

# ABSTRACT: A citation or reference to another creative work

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'citation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A citation or reference to another creative work, such as another
publication, web page, scholarly article, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
