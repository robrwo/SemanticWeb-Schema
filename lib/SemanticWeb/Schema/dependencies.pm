use utf8;

package SemanticWeb::Schema::dependencies;

# ABSTRACT: Prerequisites needed to fulfill steps in article.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'dependencies';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Prerequisites needed to fulfill steps in article.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
