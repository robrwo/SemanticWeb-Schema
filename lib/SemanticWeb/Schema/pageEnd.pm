use utf8;

package SemanticWeb::Schema::pageEnd;

# ABSTRACT: The page on which the work ends; for example "138" or "xvi".

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'pageEnd';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The page on which the work ends; for example "138" or "xvi".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
