use utf8;

package SemanticWeb::Schema::comprisedOf;

# ABSTRACT: Specifying something physically contained by something else

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'comprisedOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifying something physically contained by something else. Typically used
here for the underlying anatomical structures, such as organs, that
comprise the anatomical system.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
