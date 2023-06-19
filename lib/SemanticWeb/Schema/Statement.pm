use utf8;

package SemanticWeb::Schema::Statement;

# ABSTRACT: A statement about something

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Statement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A statement about something, for example a fun or interesting fact. If known, the main entity this statement is about can be indicated using mainEntity. For more formal claims (e.g. in Fact Checking), consider using L<SemanticWeb::Schema::Claim> instead. Use the [[text]] property to capture the text of the statement.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
