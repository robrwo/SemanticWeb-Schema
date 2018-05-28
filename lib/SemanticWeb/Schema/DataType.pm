package SemanticWeb::Schema::DataType;

# ABSTRACT: The basic data types such as Integers

use Moo;

extends qw/ SemanticWeb::RDFS::Class /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The basic data types such as Integers, Strings, etc.




=cut


around json_ld_type => sub { return 'DataType' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::RDFS::Class>

=cut

1;
