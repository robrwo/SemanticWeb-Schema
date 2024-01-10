use utf8;

package SemanticWeb::Schema::legislationPassedBy;

# ABSTRACT: The person or organization that originally passed or made the law: typically parliament (for primary legislation) or government (for secondary legislation)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationPassedBy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The person or organization that originally passed or made the law:
typically parliament (for primary legislation) or government (for secondary
legislation). This indicates the "legal author" of the law, as opposed to
its physical author.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
