use utf8;

package SemanticWeb::Schema::repeatFrequency;

# ABSTRACT: Defines the frequency at which [[Event]]s will occur according to a schedule [[Schedule]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'repeatFrequency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Defines the frequency at which L<SemanticWeb::Schema::Event>s will occur according to a schedule L<SemanticWeb::Schema::Schedule>. The intervals between
      events should be defined as a L<SemanticWeb::Schema::Duration> of time.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
